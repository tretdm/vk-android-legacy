.class Lcom/vkontakte/android/BoardTopicViewActivity$3$1;
.super Ljava/lang/Object;
.source "BoardTopicViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/BoardTopicViewActivity$3;->success(Ljava/util/ArrayList;IILjava/lang/String;ILjava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/BoardTopicViewActivity$3;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/BoardTopicViewActivity$3;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/BoardTopicViewActivity$3$1;->this$1:Lcom/vkontakte/android/BoardTopicViewActivity$3;

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 245
    iget-object v0, p0, Lcom/vkontakte/android/BoardTopicViewActivity$3$1;->this$1:Lcom/vkontakte/android/BoardTopicViewActivity$3;

    invoke-static {v0}, Lcom/vkontakte/android/BoardTopicViewActivity$3;->access$0(Lcom/vkontakte/android/BoardTopicViewActivity$3;)Lcom/vkontakte/android/BoardTopicViewActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$20(Lcom/vkontakte/android/BoardTopicViewActivity;Z)V

    .line 246
    iget-object v0, p0, Lcom/vkontakte/android/BoardTopicViewActivity$3$1;->this$1:Lcom/vkontakte/android/BoardTopicViewActivity$3;

    invoke-static {v0}, Lcom/vkontakte/android/BoardTopicViewActivity$3;->access$0(Lcom/vkontakte/android/BoardTopicViewActivity$3;)Lcom/vkontakte/android/BoardTopicViewActivity;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$21(Lcom/vkontakte/android/BoardTopicViewActivity;Z)V

    .line 247
    iget-object v0, p0, Lcom/vkontakte/android/BoardTopicViewActivity$3$1;->this$1:Lcom/vkontakte/android/BoardTopicViewActivity$3;

    invoke-static {v0}, Lcom/vkontakte/android/BoardTopicViewActivity$3;->access$0(Lcom/vkontakte/android/BoardTopicViewActivity$3;)Lcom/vkontakte/android/BoardTopicViewActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$18(Lcom/vkontakte/android/BoardTopicViewActivity;)Lcom/vkontakte/android/ui/PaginationView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/ui/PaginationView;->setVisibility(I)V

    .line 248
    iget-object v0, p0, Lcom/vkontakte/android/BoardTopicViewActivity$3$1;->this$1:Lcom/vkontakte/android/BoardTopicViewActivity$3;

    invoke-static {v0}, Lcom/vkontakte/android/BoardTopicViewActivity$3;->access$0(Lcom/vkontakte/android/BoardTopicViewActivity$3;)Lcom/vkontakte/android/BoardTopicViewActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$18(Lcom/vkontakte/android/BoardTopicViewActivity;)Lcom/vkontakte/android/ui/PaginationView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/PaginationView;->hideNow()V

    .line 250
    return-void
.end method
