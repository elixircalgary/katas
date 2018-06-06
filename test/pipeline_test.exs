defmodule PipelineTest do
  use ExUnit.Case
  import Pipeline, only: [fix_pipe: 1]

  test "basic cases" do
    assert fix_pipe([1,2,3,5,6,8,9]) == [1,2,3,4,5,6,7,8,9]
    assert fix_pipe([1,2,3,12]) == [1,2,3,4,5,6,7,8,9,10,11,12]
    assert fix_pipe([6,9]) == [6,7,8,9]
    assert fix_pipe([-1,4]) == [-1,0,1,2,3,4]
    assert fix_pipe([1,2,3]) == [1,2,3]    
  end
end
