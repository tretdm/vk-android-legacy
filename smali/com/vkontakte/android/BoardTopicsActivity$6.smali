.class Lcom/vkontakte/android/BoardTopicsActivity$6;
.super Ljava/lang/Object;
.source "BoardTopicsActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/BoardDeleteTopic$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/BoardTopicsActivity;->deleteTopic(Lcom/vkontakte/android/api/BoardTopic;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/BoardTopicsActivity;

.field private final synthetic val$topic:Lcom/vkontakte/android/api/BoardTopic;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/BoardTopicsActivity;Lcom/vkontakte/android/api/BoardTopic;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/BoardTopicsActivity$6;->this$0:Lcom/vkontakte/android/BoardTopicsActivity;

    iput-object p2, p0, Lcom/vkontakte/android/BoardTopicsActivity$6;->val$topic:Lcom/vkontakte/android/api/BoardTopic;

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 0
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 270
    return-void
.end method

.method public success()V
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/vkontakte/android/BoardTopicsActivity$6;->this$0:Lcom/vkontakte/android/BoardTopicsActivity;

    iget-object v0, v0, Lcom/vkontakte/android/BoardTopicsActivity;->topics:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vkontakte/android/BoardTopicsActivity$6;->val$topic:Lcom/vkontakte/android/api/BoardTopic;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 264
    iget-object v0, p0, Lcom/vkontakte/android/BoardTopicsActivity$6;->this$0:Lcom/vkontakte/android/BoardTopicsActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/BoardTopicsActivity;->updateList()V

    .line 265
    return-void
.end method
