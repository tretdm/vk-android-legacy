.class Lcom/vkontakte/android/BoardTopicViewActivity$5;
.super Ljava/lang/Object;
.source "BoardTopicViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/BoardTopicViewActivity;->updateList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/BoardTopicViewActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/BoardTopicViewActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/BoardTopicViewActivity$5;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/vkontakte/android/BoardTopicViewActivity$5;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    invoke-static {v0}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$34(Lcom/vkontakte/android/BoardTopicViewActivity;)Lcom/vkontakte/android/BoardTopicViewActivity$CommentsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/BoardTopicViewActivity$CommentsAdapter;->notifyDataSetChanged()V

    .line 351
    return-void
.end method
