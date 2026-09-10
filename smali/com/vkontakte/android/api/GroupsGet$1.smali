.class Lcom/vkontakte/android/api/GroupsGet$1;
.super Lcom/vkontakte/android/APIRequest$APIHandler;
.source "GroupsGet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/api/GroupsGet;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/api/GroupsGet;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/api/GroupsGet;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/api/GroupsGet$1;->this$0:Lcom/vkontakte/android/api/GroupsGet;

    .line 22
    invoke-direct {p0}, Lcom/vkontakte/android/APIRequest$APIHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 1
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/vkontakte/android/api/GroupsGet$1;->this$0:Lcom/vkontakte/android/api/GroupsGet;

    iget-object v0, v0, Lcom/vkontakte/android/api/GroupsGet;->callback:Lcom/vkontakte/android/api/GroupsGet$Callback;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/vkontakte/android/api/GroupsGet$1;->this$0:Lcom/vkontakte/android/api/GroupsGet;

    iget-object v0, v0, Lcom/vkontakte/android/api/GroupsGet;->callback:Lcom/vkontakte/android/api/GroupsGet$Callback;

    invoke-interface {v0, p1, p2}, Lcom/vkontakte/android/api/GroupsGet$Callback;->fail(ILjava/lang/String;)V

    .line 30
    :cond_0
    return-void
.end method

.method public success(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/vkontakte/android/api/GroupsGet$1;->this$0:Lcom/vkontakte/android/api/GroupsGet;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/api/GroupsGet;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    .line 25
    return-void
.end method
