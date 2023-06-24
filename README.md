# flutter-image-search

- json to dart null safety
  - 구글에 검색하면 null safety 코드 얻을수 있음 


- 최신 버전 http 패키지에 MockClient 객체가 제공되어서 이 제공되는 객체를 그냥 사용하면 됩니다.
  - 관련하여 포스팅 하였으니 참고 바랍니다.
  - https://velog.io/@jsoh/Flutter-MockClient-%EB%A1%9C-%ED%85%8C%EC%8A%A4%ED%8A%B8-%EC%BD%94%EB%93%9C-%EC%9E%91%EC%84%B1

<img width="760" alt="image" src="https://github.com/SeongjinOliver/flutter-image-search/assets/55625864/7473b453-6a5e-4aa4-bfce-b9c89c506a14">

### Sutdy
- {}를 하면 파라미터에 값을 필수로 안넣어도 된다, 파라미터에 값이 없는 경우 파라미터의 값은 null이 된다

- 변수타입 뒤에 '?'를 입력하면 해당 변수에 null값을 입력할 수 있다.

#### null값 보증 연산자 (null assertion operator) => !
- 해당 연산자는 nullable 변수가 null이 아닌 값을 가지고 있음을 단언할 때 사용하는 연산자입니다. 이 연산자는 코드의 흐름상 null이 아님을 확신할 수 있을 때만 사용해야 합니다. 잘못 사용하면 런타임 에러가 발생하게 됩니다.