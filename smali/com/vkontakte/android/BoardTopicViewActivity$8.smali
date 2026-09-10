.class Lcom/vkontakte/android/BoardTopicViewActivity$8;
.super Ljava/lang/Object;
.source "BoardTopicViewActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/BoardDeleteComment$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/BoardTopicViewActivity;->deleteComment(Lcom/vkontakte/android/api/BoardComment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

.field private final synthetic val$comment:Lcom/vkontakte/android/api/BoardComment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/BoardTopicViewActivity;Lcom/vkontakte/android/api/BoardComment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/BoardTopicViewActivity$8;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    iput-object p2, p0, Lcom/vkontakte/android/BoardTopicViewActivity$8;->val$comment:Lcom/vkontakte/android/api/BoardComment;

    .line 697
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 706
    iget-object v0, p0, Lcom/vkontakte/android/BoardTopicViewActivity$8;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    const v1, 0x7f090053

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 707
    return-void
.end method

.method public success()V
    .locals 2

    .prologue
    .line 700
    iget-object v0, p0, Lcom/vkontakte/android/BoardTopicViewActivity$8;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    invoke-static {v0}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$0(Lcom/vkontakte/android/BoardTopicViewActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/BoardTopicViewActivity$8;->val$comment:Lcom/vkontakte/android/api/BoardComment;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 701
    iget-object v0, p0, Lcom/vkontakte/android/BoardTopicViewActivity$8;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/BoardTopicViewActivity;->updateList()V

    .line 702
    return-void
.end method
