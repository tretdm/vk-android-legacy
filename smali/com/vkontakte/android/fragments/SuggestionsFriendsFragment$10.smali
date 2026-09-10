.class Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$10;
.super Ljava/lang/Object;
.source "SuggestionsFriendsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->startImportGmail()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

.field final synthetic val$accs:[Landroid/accounts/Account;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;[Landroid/accounts/Account;)V
    .locals 0

    .prologue
    .line 593
    iput-object p1, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$10;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$10;->val$accs:[Landroid/accounts/Account;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 596
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$10;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->access$300(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 597
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$10;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$10;->val$accs:[Landroid/accounts/Account;

    aget-object v1, v1, p2

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->access$1300(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;Landroid/accounts/Account;)V

    .line 598
    return-void
.end method
