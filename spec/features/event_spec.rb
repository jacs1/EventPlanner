require 'spec_helper'

describe Event do 
  before do 
    @event = FactoryGirl.build(:event)
  end

  it 'should not be nil' do 
    expect(@event).to_not be_nil
  end

  it 'should return an address' do 
  	@event[:address].should == '1 Times Square, NY NY'
  end

  it 'should have a description' do 
    @event[:description].should_not == nil
  end
 
  it 'should return an event called Awesome event' do 
    @event[:name].should == 'Awesome Event' 
  end
end

  describe EventsController, type: :controller do

    describe 'the events index page' do 
      it 'should respond with a HTTP 200 status' do 
        get :index
        expect(response.status).to eq(200)
      end
      
    describe 'the events create action' do 
      it 'creates a new event' do 
       @event = Event.create
       @event.save
       Event.count.should == 1
      end
    end
  end

end


