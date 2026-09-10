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

.field final synthetic val$opt:Lcom/vkontakte/android/api/PollOption;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PollAttachView;Lcom/vkontakte/android/api/PollOption;)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lcom/vkontakte/android/PollAttachView$4;->this$0:Lcom/vkontakte/android/PollAttachView;

    iput-object p2, p0, Lcom/vkontakte/android/PollAttachView$4;->val$opt:Lcom/vkontakte/android/api/PollOption;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 318
    iget-object v0, p0, Lcom/vkontakte/android/PollAttachView$4;->this$0:Lcom/vkontakte/android/PollAttachView;

    invoke-virtual {v0}, Lcom/vkontakte/android/PollAttachView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d00d0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 319
    return-void
.end method

.method public success(Z)V
    .locals 9
    .param p1, "voted"    # Z

    .prologue
    .line 306
    const/4 v5, 0x1

    .line 307
    .local v5, "totalVotes":I
    iget-object v6, p0, Lcom/vkontakte/android/PollAttachView$4;->this$0:Lcom/vkontakte/android/PollAttachView;

    iget-object v7, p0, Lcom/vkontakte/android/PollAttachView$4;->val$opt:Lcom/vkontakte/android/api/PollOption;

    iget v7, v7, Lcom/vkontakte/android/api/PollOption;->id:I

    invoke-static {v6, v7}, Lcom/vkontakte/android/PollAttachView;->access$102(Lcom/vkontakte/android/PollAttachView;I)I

    .line 308
    iget-object v6, p0, Lcom/vkontakte/android/PollAttachView$4;->this$0:Lcom/vkontakte/android/PollAttachView;

    invoke-static {v6}, Lcom/vkontakte/android/PollAttachView;->access$600(Lcom/vkontakte/android/PollAttachView;)[Lcom/vkontakte/android/api/PollOption;

    move-result-object v0

    .local v0, "arr$":[Lcom/vkontakte/android/api/PollOption;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .local v4, "opt":Lcom/vkontakte/android/api/PollOption;
    iget v6, v4, Lcom/vkontakte/android/api/PollOption;->numVotes:I

    add-int/2addr v5, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 309
    .end local v4    # "opt":Lcom/vkontakte/android/api/PollOption;
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v6, p0, Lcom/vkontakte/android/PollAttachView$4;->this$0:Lcom/vkontakte/android/PollAttachView;

    invoke-static {v6}, Lcom/vkontakte/android/PollAttachView;->access$600(Lcom/vkontakte/android/PollAttachView;)[Lcom/vkontakte/android/api/PollOption;

    move-result-object v6

    array-length v6, v6

    if-ge v1, v6, :cond_2

    .line 310
    iget-object v6, p0, Lcom/vkontakte/android/PollAttachView$4;->this$0:Lcom/vkontakte/android/PollAttachView;

    invoke-static {v6}, Lcom/vkontakte/android/PollAttachView;->access$600(Lcom/vkontakte/android/PollAttachView;)[Lcom/vkontakte/android/api/PollOption;

    move-result-object v6

    aget-object v6, v6, v1

    iget v6, v6, Lcom/vkontakte/android/api/PollOption;->id:I

    iget-object v7, p0, Lcom/vkontakte/android/PollAttachView$4;->val$opt:Lcom/vkontakte/android/api/PollOption;

    iget v7, v7, Lcom/vkontakte/android/api/PollOption;->id:I

    if-ne v6, v7, :cond_1

    iget-object v6, p0, Lcom/vkontakte/android/PollAttachView$4;->this$0:Lcom/vkontakte/android/PollAttachView;

    invoke-static {v6}, Lcom/vkontakte/android/PollAttachView;->access$600(Lcom/vkontakte/android/PollAttachView;)[Lcom/vkontakte/android/api/PollOption;

    move-result-object v6

    aget-object v6, v6, v1

    iget v7, v6, Lcom/vkontakte/android/api/PollOption;->numVotes:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/vkontakte/android/api/PollOption;->numVotes:I

    .line 311
    :cond_1
    iget-object v6, p0, Lcom/vkontakte/android/PollAttachView$4;->this$0:Lcom/vkontakte/android/PollAttachView;

    invoke-static {v6}, Lcom/vkontakte/android/PollAttachView;->access$600(Lcom/vkontakte/android/PollAttachView;)[Lcom/vkontakte/android/api/PollOption;

    move-result-object v6

    aget-object v6, v6, v1

    iget-object v7, p0, Lcom/vkontakte/android/PollAttachView$4;->this$0:Lcom/vkontakte/android/PollAttachView;

    invoke-static {v7}, Lcom/vkontakte/android/PollAttachView;->access$600(Lcom/vkontakte/android/PollAttachView;)[Lcom/vkontakte/android/api/PollOption;

    move-result-object v7

    aget-object v7, v7, v1

    iget v7, v7, Lcom/vkontakte/android/api/PollOption;->numVotes:I

    int-to-float v7, v7

    int-to-float v8, v5

    div-float/2addr v7, v8

    const/high16 v8, 0x42c80000    # 100.0f

    mul-float/2addr v7, v8

    iput v7, v6, Lcom/vkontakte/android/api/PollOption;->percent:F

    .line 309
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 313
    :cond_2
    iget-object v6, p0, Lcom/vkontakte/android/PollAttachView$4;->this$0:Lcom/vkontakte/android/PollAttachView;

    invoke-static {v6}, Lcom/vkontakte/android/PollAttachView;->access$700(Lcom/vkontakte/android/PollAttachView;)V

    .line 314
    iget-object v6, p0, Lcom/vkontakte/android/PollAttachView$4;->this$0:Lcom/vkontakte/android/PollAttachView;

    invoke-static {v6}, Lcom/vkontakte/android/PollAttachView;->access$800(Lcom/vkontakte/android/PollAttachView;)V

    .line 315
    return-void
.end method
