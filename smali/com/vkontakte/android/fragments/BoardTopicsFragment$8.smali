.class Lcom/vkontakte/android/fragments/BoardTopicsFragment$8;
.super Ljava/lang/Object;
.source "BoardTopicsFragment.java"

# interfaces
.implements Lcom/vkontakte/android/api/BoardDeleteTopic$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/BoardTopicsFragment;->deleteTopic(Lcom/vkontakte/android/api/BoardTopic;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/BoardTopicsFragment;

.field private final synthetic val$topic:Lcom/vkontakte/android/api/BoardTopic;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/BoardTopicsFragment;Lcom/vkontakte/android/api/BoardTopic;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$8;->this$0:Lcom/vkontakte/android/fragments/BoardTopicsFragment;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$8;->val$topic:Lcom/vkontakte/android/api/BoardTopic;

    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 0
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 323
    return-void
.end method

.method public success()V
    .locals 2

    .prologue
    .line 316
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$8;->this$0:Lcom/vkontakte/android/fragments/BoardTopicsFragment;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->topics:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$8;->val$topic:Lcom/vkontakte/android/api/BoardTopic;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 317
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$8;->this$0:Lcom/vkontakte/android/fragments/BoardTopicsFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->updateList()V

    .line 318
    return-void
.end method
