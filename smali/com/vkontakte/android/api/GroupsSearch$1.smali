.class Lcom/vkontakte/android/api/GroupsSearch$1;
.super Lcom/vkontakte/android/APIRequest$APIHandler;
.source "GroupsSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/api/GroupsSearch;-><init>(Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/api/GroupsSearch;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/api/GroupsSearch;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/api/GroupsSearch$1;->this$0:Lcom/vkontakte/android/api/GroupsSearch;

    .line 18
    invoke-direct {p0}, Lcom/vkontakte/android/APIRequest$APIHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 1
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/vkontakte/android/api/GroupsSearch$1;->this$0:Lcom/vkontakte/android/api/GroupsSearch;

    iget-object v0, v0, Lcom/vkontakte/android/api/GroupsSearch;->callback:Lcom/vkontakte/android/api/GroupsSearch$Callback;

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/vkontakte/android/api/GroupsSearch$1;->this$0:Lcom/vkontakte/android/api/GroupsSearch;

    iget-object v0, v0, Lcom/vkontakte/android/api/GroupsSearch;->callback:Lcom/vkontakte/android/api/GroupsSearch$Callback;

    invoke-interface {v0, p1, p2}, Lcom/vkontakte/android/api/GroupsSearch$Callback;->fail(ILjava/lang/String;)V

    .line 26
    :cond_0
    return-void
.end method

.method public success(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/vkontakte/android/api/GroupsSearch$1;->this$0:Lcom/vkontakte/android/api/GroupsSearch;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/api/GroupsSearch;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    .line 21
    return-void
.end method
