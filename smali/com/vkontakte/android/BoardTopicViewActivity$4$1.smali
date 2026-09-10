.class Lcom/vkontakte/android/BoardTopicViewActivity$4$1;
.super Ljava/lang/Object;
.source "BoardTopicViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/BoardTopicViewActivity$4;->success(Ljava/util/ArrayList;IILjava/lang/String;ILjava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/BoardTopicViewActivity$4;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/BoardTopicViewActivity$4;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/BoardTopicViewActivity$4$1;->this$1:Lcom/vkontakte/android/BoardTopicViewActivity$4;

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/vkontakte/android/BoardTopicViewActivity$4$1;->this$1:Lcom/vkontakte/android/BoardTopicViewActivity$4;

    invoke-static {v0}, Lcom/vkontakte/android/BoardTopicViewActivity$4;->access$0(Lcom/vkontakte/android/BoardTopicViewActivity$4;)Lcom/vkontakte/android/BoardTopicViewActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$18(Lcom/vkontakte/android/BoardTopicViewActivity;)Lcom/vkontakte/android/ui/PaginationView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/PaginationView;->hide()V

    .line 328
    return-void
.end method
