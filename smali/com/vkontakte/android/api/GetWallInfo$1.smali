.class Lcom/vkontakte/android/api/GetWallInfo$1;
.super Lcom/vkontakte/android/APIRequest$APIHandler;
.source "GetWallInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/api/GetWallInfo;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/api/GetWallInfo;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/api/GetWallInfo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/api/GetWallInfo$1;->this$0:Lcom/vkontakte/android/api/GetWallInfo;

    .line 64
    invoke-direct {p0}, Lcom/vkontakte/android/APIRequest$APIHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 1
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/vkontakte/android/api/GetWallInfo$1;->this$0:Lcom/vkontakte/android/api/GetWallInfo;

    iget-object v0, v0, Lcom/vkontakte/android/api/GetWallInfo;->callback:Lcom/vkontakte/android/api/GetWallInfo$Callback;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/vkontakte/android/api/GetWallInfo$1;->this$0:Lcom/vkontakte/android/api/GetWallInfo;

    iget-object v0, v0, Lcom/vkontakte/android/api/GetWallInfo;->callback:Lcom/vkontakte/android/api/GetWallInfo$Callback;

    invoke-interface {v0, p1, p2}, Lcom/vkontakte/android/api/GetWallInfo$Callback;->fail(ILjava/lang/String;)V

    .line 72
    :cond_0
    return-void
.end method

.method public success(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/vkontakte/android/api/GetWallInfo$1;->this$0:Lcom/vkontakte/android/api/GetWallInfo;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/api/GetWallInfo;->parse(Lorg/json/JSONObject;)V

    .line 67
    return-void
.end method
