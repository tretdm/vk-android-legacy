.class Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7$1$1;
.super Ljava/lang/Object;
.source "BoardTopicViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7$1;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7$1$1;->this$2:Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7$1;

    .line 713
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 714
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7$1$1;->this$2:Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7$1;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7$1;->access$0(Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7$1;)Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7;->access$0(Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7;)Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$3(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/RefreshableListView;->scrollDown()V

    .line 715
    return-void
.end method
