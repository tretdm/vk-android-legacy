.class Lcom/vkontakte/android/fragments/ChatMembersFragment$11;
.super Ljava/lang/Object;
.source "ChatMembersFragment.java"

# interfaces
.implements Lcom/vkontakte/android/api/AccountSetSilenceMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/ChatMembersFragment;->updateServerSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

.field final synthetic val$req:Lcom/vkontakte/android/APIRequest;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/ChatMembersFragment;Lcom/vkontakte/android/APIRequest;)V
    .locals 0

    .prologue
    .line 525
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$11;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$11;->val$req:Lcom/vkontakte/android/APIRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 533
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$11;->val$req:Lcom/vkontakte/android/APIRequest;

    iget-object v1, v1, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 534
    .local v0, "args":Lorg/json/JSONObject;
    const-string v1, "account.setSilenceMode"

    invoke-static {v1, v0, v2, v2}, Lcom/vkontakte/android/cache/Cache;->putApiRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/reflect/Method;Lorg/json/JSONObject;)V

    .line 535
    return-void
.end method

.method public success()V
    .locals 0

    .prologue
    .line 529
    return-void
.end method
