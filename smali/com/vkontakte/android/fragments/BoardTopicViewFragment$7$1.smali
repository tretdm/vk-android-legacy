.class Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7$1;
.super Ljava/lang/Object;
.source "BoardTopicViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7;->success(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7$1;->this$1:Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7;

    .line 726
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7$1;)Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7;
    .locals 1

    .prologue
    .line 726
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7$1;->this$1:Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 727
    iget-object v1, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7$1;->this$1:Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7;->access$0(Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7;)Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 728
    .local v0, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7$1;->this$1:Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7;->access$0(Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7;)Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 729
    iget-object v1, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7$1;->this$1:Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7;->access$0(Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7;)Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$3(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v1

    new-instance v2, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7$1$1;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7$1$1;-><init>(Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7$1;)V

    .line 731
    const-wide/16 v3, 0xc8

    .line 729
    invoke-virtual {v1, v2, v3, v4}, Lcom/vkontakte/android/ui/RefreshableListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 732
    return-void
.end method
