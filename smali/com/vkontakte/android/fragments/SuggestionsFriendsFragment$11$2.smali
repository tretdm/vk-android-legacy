.class Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11$2;
.super Ljava/lang/Object;
.source "SuggestionsFriendsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11$2;->this$1:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11;

    .line 636
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 637
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11$2;->this$1:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11;->access$0(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11;)Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f08006b

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 638
    return-void
.end method
