#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#  http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
class CreateCmdbEvents < ActiveRecord::Migration
  def change
    create_table :cmdb_events do |t|
      t.string :name
      t.string :description
      t.string :order

      t.references :cmdb_run
      # t.references :node  # add node references cmdb_event through cmdb_run
      #t.references :cmdb   # add node references cmdb through proposal_config

      t.timestamps
    end
  end
end
