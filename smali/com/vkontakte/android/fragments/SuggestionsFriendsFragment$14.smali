.class Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$14;
.super Ljava/lang/Object;
.source "SuggestionsFriendsFragment.java"

# interfaces
.implements Lcom/vkontakte/android/api/FacebookGetMe$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->importFacebook(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

.field private final synthetic val$token:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$14;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$14;->val$token:Ljava/lang/String;

    .line 713
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$14;)Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;
    .locals 1

    .prologue
    .line 713
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$14;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    return-object v0
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 752
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$14;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->access$3(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 754
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$14;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f080068

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 755
    return-void
.end method

.method public success(Ljava/lang/String;)V
    .locals 2
    .param p1, "myId"    # Ljava/lang/String;

    .prologue
    .line 717
    new-instance v0, Lcom/vkontakte/android/api/FacebookGetFriends;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$14;->val$token:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/vkontakte/android/api/FacebookGetFriends;-><init>(Ljava/lang/String;)V

    .line 718
    new-instance v1, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$14$1;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$14$1;-><init>(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$14;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/FacebookGetFriends;->setCallback(Lcom/vkontakte/android/api/FacebookGetFriends$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 747
    iget-object v1, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$14;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 748
    return-void
.end method
