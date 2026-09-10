.class Lcom/vkontakte/android/fragments/BoardTopicViewFragment$9;
.super Ljava/lang/Object;
.source "BoardTopicViewFragment.java"

# interfaces
.implements Lcom/vkontakte/android/api/BoardDeleteComment$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->deleteComment(Lcom/vkontakte/android/api/BoardComment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

.field final synthetic val$comment:Lcom/vkontakte/android/api/BoardComment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;Lcom/vkontakte/android/api/BoardComment;)V
    .locals 0

    .prologue
    .line 795
    iput-object p1, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$9;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$9;->val$comment:Lcom/vkontakte/android/api/BoardComment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 804
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$9;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d00d0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 805
    return-void
.end method

.method public success()V
    .locals 2

    .prologue
    .line 798
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$9;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$700(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$9;->val$comment:Lcom/vkontakte/android/api/BoardComment;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 799
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$9;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->updateList()V

    .line 800
    return-void
.end method
