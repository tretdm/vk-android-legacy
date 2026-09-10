.class Lcom/vkontakte/android/PollAttachView$4;
.super Ljava/lang/Object;
.source "PollAttachView.java"

# interfaces
.implements Lcom/vkontakte/android/api/PollsAddVote$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PollAttachView;->vote(Lcom/vkontakte/android/api/PollOption;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/PollAttachView;

.field private final synthetic val$opt:Lcom/vkontakte/android/api/PollOption;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PollAttachView;Lcom/vkontakte/android/api/PollOption;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PollAttachView$4;->this$0:Lcom/vkontakte/android/PollAttachView;

    iput-object p2, p0, Lcom/vkontakte/android/PollAttachView$4;->val$opt:Lcom/vkontakte/android/api/PollOption;

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 316
    iget-object v0, p0, Lcom/vkontakte/android/PollAttachView$4;->this$0:Lcom/vkontakte/android/PollAttachView;

    invoke-virtual {v0}, Lcom/vkontakte/android/PollAttachView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080068

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 317
    return-void
.end method

.method public success(Z)V
    .locals 7
    .param p1, "voted"    # Z

    .prologue
    .line 304
    const/4 v2, 0x1

    .line 305
    .local v2, "totalVotes":I
    iget-object v3, p0, Lcom/vkontakte/android/PollAttachView$4;->this$0:Lcom/vkontakte/android/PollAttachView;

    iget-object v4, p0, Lcom/vkontakte/android/PollAttachView$4;->val$opt:Lcom/vkontakte/android/api/PollOption;

    iget v4, v4, Lcom/vkontakte/android/api/PollOption;->id:I

    invoke-static {v3, v4}, Lcom/vkontakte/android/PollAttachView;->access$6(Lcom/vkontakte/android/PollAttachView;I)V

    .line 306
    iget-object v3, p0, Lcom/vkontakte/android/PollAttachView$4;->this$0:Lcom/vkontakte/android/PollAttachView;

    invoke-static {v3}, Lcom/vkontakte/android/PollAttachView;->access$7(Lcom/vkontakte/android/PollAttachView;)[Lcom/vkontakte/android/api/PollOption;

    move-result-object v4

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v5, :cond_0

    .line 307
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/vkontakte/android/PollAttachView$4;->this$0:Lcom/vkontakte/android/PollAttachView;

    invoke-static {v3}, Lcom/vkontakte/android/PollAttachView;->access$7(Lcom/vkontakte/android/PollAttachView;)[Lcom/vkontakte/android/api/PollOption;

    move-result-object v3

    array-length v3, v3

    if-lt v0, v3, :cond_1

    .line 311
    iget-object v3, p0, Lcom/vkontakte/android/PollAttachView$4;->this$0:Lcom/vkontakte/android/PollAttachView;

    invoke-static {v3}, Lcom/vkontakte/android/PollAttachView;->access$8(Lcom/vkontakte/android/PollAttachView;)V

    .line 312
    iget-object v3, p0, Lcom/vkontakte/android/PollAttachView$4;->this$0:Lcom/vkontakte/android/PollAttachView;

    invoke-static {v3}, Lcom/vkontakte/android/PollAttachView;->access$9(Lcom/vkontakte/android/PollAttachView;)V

    .line 313
    return-void

    .line 306
    .end local v0    # "i":I
    :cond_0
    aget-object v1, v4, v3

    .local v1, "opt":Lcom/vkontakte/android/api/PollOption;
    iget v6, v1, Lcom/vkontakte/android/api/PollOption;->numVotes:I

    add-int/2addr v2, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 308
    .end local v1    # "opt":Lcom/vkontakte/android/api/PollOption;
    .restart local v0    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/vkontakte/android/PollAttachView$4;->this$0:Lcom/vkontakte/android/PollAttachView;

    invoke-static {v3}, Lcom/vkontakte/android/PollAttachView;->access$7(Lcom/vkontakte/android/PollAttachView;)[Lcom/vkontakte/android/api/PollOption;

    move-result-object v3

    aget-object v3, v3, v0

    iget v3, v3, Lcom/vkontakte/android/api/PollOption;->id:I

    iget-object v4, p0, Lcom/vkontakte/android/PollAttachView$4;->val$opt:Lcom/vkontakte/android/api/PollOption;

    iget v4, v4, Lcom/vkontakte/android/api/PollOption;->id:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/vkontakte/android/PollAttachView$4;->this$0:Lcom/vkontakte/android/PollAttachView;

    invoke-static {v3}, Lcom/vkontakte/android/PollAttachView;->access$7(Lcom/vkontakte/android/PollAttachView;)[Lcom/vkontakte/android/api/PollOption;

    move-result-object v3

    aget-object v3, v3, v0

    iget v4, v3, Lcom/vkontakte/android/api/PollOption;->numVotes:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/vkontakte/android/api/PollOption;->numVotes:I

    .line 309
    :cond_2
    iget-object v3, p0, Lcom/vkontakte/android/PollAttachView$4;->this$0:Lcom/vkontakte/android/PollAttachView;

    invoke-static {v3}, Lcom/vkontakte/android/PollAttachView;->access$7(Lcom/vkontakte/android/PollAttachView;)[Lcom/vkontakte/android/api/PollOption;

    move-result-object v3

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/vkontakte/android/PollAttachView$4;->this$0:Lcom/vkontakte/android/PollAttachView;

    invoke-static {v4}, Lcom/vkontakte/android/PollAttachView;->access$7(Lcom/vkontakte/android/PollAttachView;)[Lcom/vkontakte/android/api/PollOption;

    move-result-object v4

    aget-object v4, v4, v0

    iget v4, v4, Lcom/vkontakte/android/api/PollOption;->numVotes:I

    int-to-float v4, v4

    int-to-float v5, v2

    div-float/2addr v4, v5

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v4, v5

    iput v4, v3, Lcom/vkontakte/android/api/PollOption;->percent:F

    .line 307
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
