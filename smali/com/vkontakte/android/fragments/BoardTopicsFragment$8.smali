.class Lcom/vkontakte/android/fragments/BoardTopicsFragment$8;
.super Ljava/lang/Object;
.source "BoardTopicsFragment.java"

# interfaces
.implements Lcom/vkontakte/android/api/BoardCloseTopic$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/BoardTopicsFragment;->toggleCloseTopic(Lcom/vkontakte/android/api/BoardTopic;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/BoardTopicsFragment;

.field final synthetic val$isClosed:Z

.field final synthetic val$topic:Lcom/vkontakte/android/api/BoardTopic;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/BoardTopicsFragment;ZLcom/vkontakte/android/api/BoardTopic;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$8;->this$0:Lcom/vkontakte/android/fragments/BoardTopicsFragment;

    iput-boolean p2, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$8;->val$isClosed:Z

    iput-object p3, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$8;->val$topic:Lcom/vkontakte/android/api/BoardTopic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 274
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$8;->this$0:Lcom/vkontakte/android/fragments/BoardTopicsFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d00d0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 275
    return-void
.end method

.method public success()V
    .locals 3

    .prologue
    .line 266
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$8;->this$0:Lcom/vkontakte/android/fragments/BoardTopicsFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$8;->val$isClosed:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0d0336

    :goto_0
    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 267
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$8;->val$isClosed:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$8;->val$topic:Lcom/vkontakte/android/api/BoardTopic;

    iget v1, v0, Lcom/vkontakte/android/api/BoardTopic;->flags:I

    and-int/lit8 v1, v1, -0x2

    iput v1, v0, Lcom/vkontakte/android/api/BoardTopic;->flags:I

    .line 269
    :goto_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$8;->this$0:Lcom/vkontakte/android/fragments/BoardTopicsFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->updateList()V

    .line 270
    return-void

    .line 266
    :cond_0
    const v0, 0x7f0d0331

    goto :goto_0

    .line 268
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$8;->val$topic:Lcom/vkontakte/android/api/BoardTopic;

    iget v1, v0, Lcom/vkontakte/android/api/BoardTopic;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/vkontakte/android/api/BoardTopic;->flags:I

    goto :goto_1
.end method
