.class Lcom/vkontakte/android/PhotoCommentsActivity$6;
.super Lcom/vkontakte/android/APIRequest$APIHandler;
.source "PhotoCommentsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PhotoCommentsActivity;->sendComment()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/PhotoCommentsActivity;

.field private final synthetic val$comment:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PhotoCommentsActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PhotoCommentsActivity$6;->this$0:Lcom/vkontakte/android/PhotoCommentsActivity;

    iput-object p2, p0, Lcom/vkontakte/android/PhotoCommentsActivity$6;->val$comment:Ljava/lang/String;

    .line 223
    invoke-direct {p0}, Lcom/vkontakte/android/APIRequest$APIHandler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/PhotoCommentsActivity$6;)Lcom/vkontakte/android/PhotoCommentsActivity;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/vkontakte/android/PhotoCommentsActivity$6;->this$0:Lcom/vkontakte/android/PhotoCommentsActivity;

    return-object v0
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 2
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 249
    iget-object v0, p0, Lcom/vkontakte/android/PhotoCommentsActivity$6;->this$0:Lcom/vkontakte/android/PhotoCommentsActivity;

    const v1, 0x7f060057

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/PhotoCommentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 250
    iget-object v0, p0, Lcom/vkontakte/android/PhotoCommentsActivity$6;->this$0:Lcom/vkontakte/android/PhotoCommentsActivity;

    const v1, 0x7f060058

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/PhotoCommentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 251
    iget-object v0, p0, Lcom/vkontakte/android/PhotoCommentsActivity$6;->this$0:Lcom/vkontakte/android/PhotoCommentsActivity;

    const v1, 0x7f060052

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/PhotoCommentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 252
    return-void
.end method

.method public success(Lorg/json/JSONObject;)V
    .locals 10
    .param p1, "r"    # Lorg/json/JSONObject;

    .prologue
    const v9, 0x7f060057

    const v8, 0x7f060052

    const/16 v7, 0x8

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 225
    iget-object v1, p0, Lcom/vkontakte/android/PhotoCommentsActivity$6;->this$0:Lcom/vkontakte/android/PhotoCommentsActivity;

    invoke-virtual {v1, v9}, Lcom/vkontakte/android/PhotoCommentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 226
    iget-object v1, p0, Lcom/vkontakte/android/PhotoCommentsActivity$6;->this$0:Lcom/vkontakte/android/PhotoCommentsActivity;

    const v2, 0x7f060058

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/PhotoCommentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 227
    iget-object v1, p0, Lcom/vkontakte/android/PhotoCommentsActivity$6;->this$0:Lcom/vkontakte/android/PhotoCommentsActivity;

    invoke-virtual {v1, v8}, Lcom/vkontakte/android/PhotoCommentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 229
    :try_start_0
    new-instance v0, Lcom/vkontakte/android/NewsComment;

    invoke-direct {v0}, Lcom/vkontakte/android/NewsComment;-><init>()V

    .line 230
    .local v0, "nc":Lcom/vkontakte/android/NewsComment;
    const-string v1, "response"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/vkontakte/android/NewsComment;->cid:I

    .line 231
    iget-object v1, p0, Lcom/vkontakte/android/PhotoCommentsActivity$6;->val$comment:Ljava/lang/String;

    iput-object v1, v0, Lcom/vkontakte/android/NewsComment;->text:Ljava/lang/String;

    .line 232
    iget-object v1, p0, Lcom/vkontakte/android/PhotoCommentsActivity$6;->this$0:Lcom/vkontakte/android/PhotoCommentsActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/PhotoCommentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v2, v2

    invoke-static {v1, v2}, Lcom/vkontakte/android/Global;->langDate(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vkontakte/android/NewsComment;->time:Ljava/lang/String;

    .line 233
    sget-object v1, Lcom/vkontakte/android/Global;->myName:Ljava/lang/String;

    iput-object v1, v0, Lcom/vkontakte/android/NewsComment;->userName:Ljava/lang/String;

    .line 234
    sget-object v1, Lcom/vkontakte/android/Global;->myPhoto100:Ljava/lang/String;

    iput-object v1, v0, Lcom/vkontakte/android/NewsComment;->userPhoto:Ljava/lang/String;

    .line 235
    iget-object v1, p0, Lcom/vkontakte/android/PhotoCommentsActivity$6;->this$0:Lcom/vkontakte/android/PhotoCommentsActivity;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/vkontakte/android/NewsComment;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/vkontakte/android/PhotoCommentsActivity;->access$3(Lcom/vkontakte/android/PhotoCommentsActivity;[Lcom/vkontakte/android/NewsComment;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    .end local v0    # "nc":Lcom/vkontakte/android/NewsComment;
    :goto_0
    iget-object v1, p0, Lcom/vkontakte/android/PhotoCommentsActivity$6;->this$0:Lcom/vkontakte/android/PhotoCommentsActivity;

    invoke-virtual {v1, v8}, Lcom/vkontakte/android/PhotoCommentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v1, p0, Lcom/vkontakte/android/PhotoCommentsActivity$6;->this$0:Lcom/vkontakte/android/PhotoCommentsActivity;

    invoke-virtual {v1, v9}, Lcom/vkontakte/android/PhotoCommentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 239
    iget-object v1, p0, Lcom/vkontakte/android/PhotoCommentsActivity$6;->this$0:Lcom/vkontakte/android/PhotoCommentsActivity;

    const v2, 0x7f060058

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/PhotoCommentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 240
    iget-object v1, p0, Lcom/vkontakte/android/PhotoCommentsActivity$6;->this$0:Lcom/vkontakte/android/PhotoCommentsActivity;

    const v2, 0x7f06016b

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/PhotoCommentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/vkontakte/android/PhotoCommentsActivity$6$1;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/PhotoCommentsActivity$6$1;-><init>(Lcom/vkontakte/android/PhotoCommentsActivity$6;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 247
    return-void

    .line 236
    :catch_0
    move-exception v1

    goto :goto_0
.end method
