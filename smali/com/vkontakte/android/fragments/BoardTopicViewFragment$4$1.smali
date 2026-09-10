.class Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4$1;
.super Ljava/lang/Object;
.source "BoardTopicViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;->success(Ljava/util/ArrayList;IILjava/lang/String;ILjava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;)V
    .locals 0

    .prologue
    .line 323
    iput-object p1, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4$1;->this$1:Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 324
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4$1;->this$1:Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$1702(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;Z)Z

    .line 325
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4$1;->this$1:Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v0, v2}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$1802(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;Z)Z

    .line 326
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4$1;->this$1:Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$1500(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Lcom/vkontakte/android/ui/PaginationView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/ui/PaginationView;->setVisibility(I)V

    .line 327
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4$1;->this$1:Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$1500(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Lcom/vkontakte/android/ui/PaginationView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/PaginationView;->hideNow()V

    .line 329
    return-void
.end method
