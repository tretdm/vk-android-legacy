.class Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$14$1$1;
.super Ljava/lang/Object;
.source "SuggestionsFriendsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$14$1;->success(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$14$1;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$14$1;)V
    .locals 0

    .prologue
    .line 722
    iput-object p1, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$14$1$1;->this$2:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$14$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 724
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$14$1$1;->this$2:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$14$1;

    iget-object v1, v1, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$14$1;->this$1:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$14;

    iget-object v1, v1, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$14;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d00d0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0196

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d01cd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 729
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$14$1$1;->this$2:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$14$1;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$14$1;->this$1:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$14;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$14;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->access$200(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;)V

    .line 730
    return-void
.end method
