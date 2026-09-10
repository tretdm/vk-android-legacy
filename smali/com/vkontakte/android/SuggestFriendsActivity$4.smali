.class Lcom/vkontakte/android/SuggestFriendsActivity$4;
.super Lcom/vkontakte/android/APIRequest$APIHandler;
.source "SuggestFriendsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/SuggestFriendsActivity;->doSendRequests(Ljava/util/Vector;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/SuggestFriendsActivity;

.field private final synthetic val$num:I

.field private final synthetic val$uids:Ljava/util/Vector;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/SuggestFriendsActivity;ILjava/util/Vector;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/SuggestFriendsActivity$4;->this$0:Lcom/vkontakte/android/SuggestFriendsActivity;

    iput p2, p0, Lcom/vkontakte/android/SuggestFriendsActivity$4;->val$num:I

    iput-object p3, p0, Lcom/vkontakte/android/SuggestFriendsActivity$4;->val$uids:Ljava/util/Vector;

    .line 116
    invoke-direct {p0}, Lcom/vkontakte/android/APIRequest$APIHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 1
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/vkontakte/android/SuggestFriendsActivity$4;->this$0:Lcom/vkontakte/android/SuggestFriendsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/SuggestFriendsActivity;->access$3(Lcom/vkontakte/android/SuggestFriendsActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 127
    return-void
.end method

.method public success(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/vkontakte/android/SuggestFriendsActivity$4;->this$0:Lcom/vkontakte/android/SuggestFriendsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/SuggestFriendsActivity;->access$3(Lcom/vkontakte/android/SuggestFriendsActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/SuggestFriendsActivity$4;->this$0:Lcom/vkontakte/android/SuggestFriendsActivity;

    invoke-static {v1}, Lcom/vkontakte/android/SuggestFriendsActivity;->access$3(Lcom/vkontakte/android/SuggestFriendsActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getProgress()I

    move-result v1

    iget v2, p0, Lcom/vkontakte/android/SuggestFriendsActivity$4;->val$num:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 119
    iget-object v0, p0, Lcom/vkontakte/android/SuggestFriendsActivity$4;->val$uids:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/SuggestFriendsActivity$4;->this$0:Lcom/vkontakte/android/SuggestFriendsActivity;

    iget-object v1, p0, Lcom/vkontakte/android/SuggestFriendsActivity$4;->val$uids:Ljava/util/Vector;

    invoke-static {v0, v1}, Lcom/vkontakte/android/SuggestFriendsActivity;->access$4(Lcom/vkontakte/android/SuggestFriendsActivity;Ljava/util/Vector;)V

    .line 124
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/SuggestFriendsActivity$4;->this$0:Lcom/vkontakte/android/SuggestFriendsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/SuggestFriendsActivity;->access$3(Lcom/vkontakte/android/SuggestFriendsActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 122
    iget-object v0, p0, Lcom/vkontakte/android/SuggestFriendsActivity$4;->this$0:Lcom/vkontakte/android/SuggestFriendsActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/SuggestFriendsActivity;->finish()V

    goto :goto_0
.end method
