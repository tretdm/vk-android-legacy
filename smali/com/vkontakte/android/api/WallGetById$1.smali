.class Lcom/vkontakte/android/api/WallGetById$1;
.super Lcom/vkontakte/android/APIRequest$APIHandler;
.source "WallGetById.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/api/WallGetById;-><init>([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/api/WallGetById;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/api/WallGetById;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/api/WallGetById$1;->this$0:Lcom/vkontakte/android/api/WallGetById;

    .line 33
    invoke-direct {p0}, Lcom/vkontakte/android/APIRequest$APIHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 1
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/vkontakte/android/api/WallGetById$1;->this$0:Lcom/vkontakte/android/api/WallGetById;

    iget-object v0, v0, Lcom/vkontakte/android/api/WallGetById;->callback:Lcom/vkontakte/android/api/WallGetById$Callback;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/vkontakte/android/api/WallGetById$1;->this$0:Lcom/vkontakte/android/api/WallGetById;

    iget-object v0, v0, Lcom/vkontakte/android/api/WallGetById;->callback:Lcom/vkontakte/android/api/WallGetById$Callback;

    invoke-interface {v0, p1, p2}, Lcom/vkontakte/android/api/WallGetById$Callback;->fail(ILjava/lang/String;)V

    .line 41
    :cond_0
    return-void
.end method

.method public success(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vkontakte/android/api/WallGetById$1;->this$0:Lcom/vkontakte/android/api/WallGetById;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/api/WallGetById;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    .line 36
    return-void
.end method
