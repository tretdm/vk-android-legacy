.class Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5$1;
.super Ljava/lang/Object;
.source "BoardTopicViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5;->success(Ljava/util/ArrayList;IILjava/lang/String;ILjava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5;)V
    .locals 0

    .prologue
    .line 413
    iput-object p1, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5$1;->this$1:Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5$1;->this$1:Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$1500(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Lcom/vkontakte/android/ui/PaginationView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/PaginationView;->hide()V

    .line 415
    return-void
.end method
