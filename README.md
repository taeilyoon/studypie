# Studypie Test

## studypie의 코딩과제를 위한 프로젝트

## 실행 방법
1. 해당 프로젝트는 code_gen과 build_runner를 사용하고 있습니다. 
   다음 커맨드를 실행하여 코드를 생성 시켜주세요.
   flutter pub run build_runner build --delete-conflicting-outputs

2. 해당 프로젝트는 flavor를 사용 중 이지만 환경에 따른 차이점은 없습니다.
   아무방법으로나 실행 시켜도 괜찮습니다.
   
## 의문점
1. FutureBuilder를 이용해 오늘의 날짜(요일, 일/월/년)를 보여주는 위젯을 만들어 주세요 
   조건 중 FutureBuilder를 사용해 시간값을 가져와달라는 내용이 있었으나.
   서버시간을 가져오지 않은 이상 Future를 사용하지 않아도 된다고 생각함.
   서버시간을 가져오기 위한 자료가 제공되지 않아 내부에서 임의로 Future로 처리함
   
2. StreamBuilder를 이용해 오늘의 온도 및 날씨(맑음, 흐림, 비 등)를 보여주는 위젯을 만들어 주세요.
   제시하는 라이브러리 Weather에서 stream으로 데이터를 제공해주지 않으며 로직상에도 불필요해 보여서 StreamBuilder가 
   아닌 FutureBuilder를 사용하는 게 나아보이나 제시된 조건 때문에 asStream으로 처리함
   
3. 날씨 위젯의 아이콘 표기를 위해 위해 https://pub.dev/packages/weather_icons 를 사용해 주세요.
   weather 라이브러리의 응답값과 weather_icons이 값이 호환되지 않은 것 같습니다.
   weather와 호환되는 openweathermap.org로 대체 하여 진행 하였음.
   
4. 현재 지역을 바꿀 수 있는 버튼 리스트를 가로로 스크롤 될 수 있도록 만들어 주세요.
어떤 디바이스 환경에서도 스크롤 될 수 있도록 길이를 1/3 device_width 로 설정함  
   
   