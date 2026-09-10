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
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4$1;->this$1:Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 318
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4$1;->this$1:Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;->access$0(Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;)Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$21(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;Z)V

    .line 319
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4$1;->this$1:Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;->access$0(Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;)Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$22(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;Z)V

    .line 320
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4$1;->this$1:Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;->access$0(Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;)Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$19(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Lcom/vkontakte/android/ui/PaginationView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/ui/PaginationView;->setVisibility(I)V

    .line 321
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4$1;->this$1:Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;->access$0(Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;)Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$19(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Lcom/vkontakte/android/ui/PaginationView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/PaginationView;->hideNow()V

    .line 323
    return-void
.end method
