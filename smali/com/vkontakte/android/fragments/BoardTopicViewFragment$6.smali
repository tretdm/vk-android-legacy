.class Lcom/vkontakte/android/fragments/BoardTopicViewFragment$6;
.super Ljava/lang/Object;
.source "BoardTopicViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->updateList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$6;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    .line 431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$6;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$36(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Lcom/vkontakte/android/fragments/BoardTopicViewFragment$CommentsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$CommentsAdapter;->notifyDataSetChanged()V

    .line 433
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$6;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$2(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->updateImages()V

    .line 434
    return-void
.end method
