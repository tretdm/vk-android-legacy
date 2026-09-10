.class Lcom/vkontakte/android/fragments/ChatFragment$25;
.super Ljava/util/TimerTask;
.source "ChatFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/ChatFragment;->restartTypingTimer(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/ChatFragment;

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/ChatFragment;I)V
    .locals 0

    .prologue
    .line 1386
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ChatFragment$25;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    iput p2, p0, Lcom/vkontakte/android/fragments/ChatFragment$25;->val$uid:I

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1389
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$25;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$6100(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lcom/vkontakte/android/fragments/ChatFragment$25;->val$uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1390
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$25;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$1500(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/vkontakte/android/fragments/ChatFragment$25;->val$uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1391
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$25;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$5900(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/fragments/ChatFragment$25$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/ChatFragment$25$1;-><init>(Lcom/vkontakte/android/fragments/ChatFragment$25;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 1394
    return-void
.end method
