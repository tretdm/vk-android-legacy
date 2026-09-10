.class Lcom/vkontakte/android/RestoreActivity$10$1;
.super Ljava/lang/Object;
.source "RestoreActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/RestoreActivity$10;->fail(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/RestoreActivity$10;

.field final synthetic val$ecode:I

.field final synthetic val$emsg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/RestoreActivity$10;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lcom/vkontakte/android/RestoreActivity$10$1;->this$1:Lcom/vkontakte/android/RestoreActivity$10;

    iput p2, p0, Lcom/vkontakte/android/RestoreActivity$10$1;->val$ecode:I

    iput-object p3, p0, Lcom/vkontakte/android/RestoreActivity$10$1;->val$emsg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const v6, 0x7f0d033d

    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 268
    iget v0, p0, Lcom/vkontakte/android/RestoreActivity$10$1;->val$ecode:I

    const/16 v1, 0x456

    if-ne v0, v1, :cond_1

    .line 269
    iget-object v0, p0, Lcom/vkontakte/android/RestoreActivity$10$1;->this$1:Lcom/vkontakte/android/RestoreActivity$10;

    iget-object v0, v0, Lcom/vkontakte/android/RestoreActivity$10;->this$0:Lcom/vkontakte/android/RestoreActivity;

    iget-object v1, p0, Lcom/vkontakte/android/RestoreActivity$10$1;->this$1:Lcom/vkontakte/android/RestoreActivity$10;

    iget-object v1, v1, Lcom/vkontakte/android/RestoreActivity$10;->this$0:Lcom/vkontakte/android/RestoreActivity;

    const v2, 0x7f0d02e6

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/RestoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/RestoreActivity;->access$1100(Lcom/vkontakte/android/RestoreActivity;Ljava/lang/String;)V

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    iget v0, p0, Lcom/vkontakte/android/RestoreActivity$10$1;->val$ecode:I

    const/16 v1, 0x457

    if-eq v0, v1, :cond_0

    .line 272
    iget v0, p0, Lcom/vkontakte/android/RestoreActivity$10$1;->val$ecode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 273
    iget-object v0, p0, Lcom/vkontakte/android/RestoreActivity$10$1;->this$1:Lcom/vkontakte/android/RestoreActivity$10;

    iget-object v0, v0, Lcom/vkontakte/android/RestoreActivity$10;->this$0:Lcom/vkontakte/android/RestoreActivity;

    iget-object v1, p0, Lcom/vkontakte/android/RestoreActivity$10$1;->this$1:Lcom/vkontakte/android/RestoreActivity$10;

    iget-object v1, v1, Lcom/vkontakte/android/RestoreActivity$10;->this$0:Lcom/vkontakte/android/RestoreActivity;

    const v2, 0x7f0d00ce

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/RestoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/RestoreActivity;->access$1100(Lcom/vkontakte/android/RestoreActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 274
    :cond_2
    iget v0, p0, Lcom/vkontakte/android/RestoreActivity$10$1;->val$ecode:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_4

    .line 275
    iget-object v0, p0, Lcom/vkontakte/android/RestoreActivity$10$1;->val$emsg:Ljava/lang/String;

    const-string v1, "change_password_hash"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 276
    iget-object v0, p0, Lcom/vkontakte/android/RestoreActivity$10$1;->this$1:Lcom/vkontakte/android/RestoreActivity$10;

    iget-object v0, v0, Lcom/vkontakte/android/RestoreActivity$10;->this$0:Lcom/vkontakte/android/RestoreActivity;

    iget-object v1, p0, Lcom/vkontakte/android/RestoreActivity$10$1;->this$1:Lcom/vkontakte/android/RestoreActivity$10;

    iget-object v1, v1, Lcom/vkontakte/android/RestoreActivity$10;->this$0:Lcom/vkontakte/android/RestoreActivity;

    const v2, 0x7f0d00d1

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/RestoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/RestoreActivity;->access$1100(Lcom/vkontakte/android/RestoreActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 278
    :cond_3
    iget-object v0, p0, Lcom/vkontakte/android/RestoreActivity$10$1;->this$1:Lcom/vkontakte/android/RestoreActivity$10;

    iget-object v0, v0, Lcom/vkontakte/android/RestoreActivity$10;->this$0:Lcom/vkontakte/android/RestoreActivity;

    iget-object v1, p0, Lcom/vkontakte/android/RestoreActivity$10$1;->this$1:Lcom/vkontakte/android/RestoreActivity$10;

    iget-object v1, v1, Lcom/vkontakte/android/RestoreActivity$10;->this$0:Lcom/vkontakte/android/RestoreActivity;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/vkontakte/android/RestoreActivity$10$1;->val$emsg:Ljava/lang/String;

    aput-object v3, v2, v4

    iget v3, p0, Lcom/vkontakte/android/RestoreActivity$10$1;->val$ecode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v6, v2}, Lcom/vkontakte/android/RestoreActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/RestoreActivity;->access$1100(Lcom/vkontakte/android/RestoreActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 279
    :cond_4
    iget v0, p0, Lcom/vkontakte/android/RestoreActivity$10$1;->val$ecode:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_6

    .line 280
    iget-object v0, p0, Lcom/vkontakte/android/RestoreActivity$10$1;->val$emsg:Ljava/lang/String;

    const-string v1, "compromised"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 281
    iget-object v0, p0, Lcom/vkontakte/android/RestoreActivity$10$1;->this$1:Lcom/vkontakte/android/RestoreActivity$10;

    iget-object v0, v0, Lcom/vkontakte/android/RestoreActivity$10;->this$0:Lcom/vkontakte/android/RestoreActivity;

    iget-object v1, p0, Lcom/vkontakte/android/RestoreActivity$10$1;->this$1:Lcom/vkontakte/android/RestoreActivity$10;

    iget-object v1, v1, Lcom/vkontakte/android/RestoreActivity$10;->this$0:Lcom/vkontakte/android/RestoreActivity;

    const v2, 0x7f0d00d4

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/RestoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/RestoreActivity;->access$1100(Lcom/vkontakte/android/RestoreActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 283
    :cond_5
    iget-object v0, p0, Lcom/vkontakte/android/RestoreActivity$10$1;->this$1:Lcom/vkontakte/android/RestoreActivity$10;

    iget-object v0, v0, Lcom/vkontakte/android/RestoreActivity$10;->this$0:Lcom/vkontakte/android/RestoreActivity;

    iget-object v1, p0, Lcom/vkontakte/android/RestoreActivity$10$1;->this$1:Lcom/vkontakte/android/RestoreActivity$10;

    iget-object v1, v1, Lcom/vkontakte/android/RestoreActivity$10;->this$0:Lcom/vkontakte/android/RestoreActivity;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/vkontakte/android/RestoreActivity$10$1;->val$emsg:Ljava/lang/String;

    aput-object v3, v2, v4

    iget v3, p0, Lcom/vkontakte/android/RestoreActivity$10$1;->val$ecode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v6, v2}, Lcom/vkontakte/android/RestoreActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/RestoreActivity;->access$1100(Lcom/vkontakte/android/RestoreActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 285
    :cond_6
    iget-object v0, p0, Lcom/vkontakte/android/RestoreActivity$10$1;->this$1:Lcom/vkontakte/android/RestoreActivity$10;

    iget-object v0, v0, Lcom/vkontakte/android/RestoreActivity$10;->this$0:Lcom/vkontakte/android/RestoreActivity;

    iget-object v1, p0, Lcom/vkontakte/android/RestoreActivity$10$1;->this$1:Lcom/vkontakte/android/RestoreActivity$10;

    iget-object v1, v1, Lcom/vkontakte/android/RestoreActivity$10;->this$0:Lcom/vkontakte/android/RestoreActivity;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/vkontakte/android/RestoreActivity$10$1;->val$emsg:Ljava/lang/String;

    aput-object v3, v2, v4

    iget v3, p0, Lcom/vkontakte/android/RestoreActivity$10$1;->val$ecode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v6, v2}, Lcom/vkontakte/android/RestoreActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/RestoreActivity;->access$1100(Lcom/vkontakte/android/RestoreActivity;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
