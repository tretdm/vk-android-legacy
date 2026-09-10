.class Lcom/vkontakte/android/FriendsGetSuggestions$1;
.super Lcom/vkontakte/android/APIRequest$APIHandler;
.source "FriendsGetSuggestions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/FriendsGetSuggestions;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/FriendsGetSuggestions;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/FriendsGetSuggestions;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/FriendsGetSuggestions$1;->this$0:Lcom/vkontakte/android/FriendsGetSuggestions;

    .line 21
    invoke-direct {p0}, Lcom/vkontakte/android/APIRequest$APIHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 1
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/vkontakte/android/FriendsGetSuggestions$1;->this$0:Lcom/vkontakte/android/FriendsGetSuggestions;

    iget-object v0, v0, Lcom/vkontakte/android/FriendsGetSuggestions;->callback:Lcom/vkontakte/android/FriendsGetSuggestions$Callback;

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/vkontakte/android/FriendsGetSuggestions$1;->this$0:Lcom/vkontakte/android/FriendsGetSuggestions;

    iget-object v0, v0, Lcom/vkontakte/android/FriendsGetSuggestions;->callback:Lcom/vkontakte/android/FriendsGetSuggestions$Callback;

    invoke-interface {v0, p1, p2}, Lcom/vkontakte/android/FriendsGetSuggestions$Callback;->fail(ILjava/lang/String;)V

    .line 29
    :cond_0
    return-void
.end method

.method public success(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/vkontakte/android/FriendsGetSuggestions$1;->this$0:Lcom/vkontakte/android/FriendsGetSuggestions;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/FriendsGetSuggestions;->parse(Lorg/json/JSONObject;)V

    .line 24
    return-void
.end method
