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
    .line 716
    iput-object p1, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7$1;->this$1:Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 717
    iget-object v1, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7$1;->this$1:Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7;

    iget-object v1, v1, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 718
    .local v0, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7$1;->this$1:Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7;

    iget-object v1, v1, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 719
    iget-object v1, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7$1;->this$1:Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7;

    iget-object v1, v1, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$1000(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Landroid/widget/ListView;

    move-result-object v1

    new-instance v2, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7$1$1;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7$1$1;-><init>(Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7$1;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 722
    return-void
.end method
