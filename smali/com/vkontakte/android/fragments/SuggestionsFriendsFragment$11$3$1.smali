.class Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11$3$1;
.super Ljava/lang/Object;
.source "SuggestionsFriendsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11$3;->success(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11$3;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11$3;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11$3$1;->this$2:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11$3;

    .line 651
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 653
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11$3$1;->this$2:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11$3;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11$3;->access$0(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11$3;)Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11;->access$0(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11;)Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 654
    const v1, 0x7f080068

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 655
    const v1, 0x7f0802b1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 656
    const v1, 0x7f080042

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 657
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 658
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11$3$1;->this$2:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11$3;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11$3;->access$0(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11$3;)Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11;->access$0(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11;)Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->access$2(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;)V

    .line 659
    return-void
.end method
