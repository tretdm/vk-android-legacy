.class Lcom/vkontakte/android/api/UsersSearch$1;
.super Lcom/vkontakte/android/APIRequest$APIHandler;
.source "UsersSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/api/UsersSearch;-><init>(Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/api/UsersSearch;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/api/UsersSearch;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/api/UsersSearch$1;->this$0:Lcom/vkontakte/android/api/UsersSearch;

    .line 41
    invoke-direct {p0}, Lcom/vkontakte/android/APIRequest$APIHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 1
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/vkontakte/android/api/UsersSearch$1;->this$0:Lcom/vkontakte/android/api/UsersSearch;

    iget-object v0, v0, Lcom/vkontakte/android/api/UsersSearch;->callback:Lcom/vkontakte/android/api/UsersSearch$Callback;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/vkontakte/android/api/UsersSearch$1;->this$0:Lcom/vkontakte/android/api/UsersSearch;

    iget-object v0, v0, Lcom/vkontakte/android/api/UsersSearch;->callback:Lcom/vkontakte/android/api/UsersSearch$Callback;

    invoke-interface {v0, p1, p2}, Lcom/vkontakte/android/api/UsersSearch$Callback;->fail(ILjava/lang/String;)V

    .line 49
    :cond_0
    return-void
.end method

.method public success(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/vkontakte/android/api/UsersSearch$1;->this$0:Lcom/vkontakte/android/api/UsersSearch;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/api/UsersSearch;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    .line 44
    return-void
.end method
