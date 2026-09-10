.class Lcom/vkontakte/android/RestoreActivity$8;
.super Ljava/lang/Object;
.source "RestoreActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/AuthRestore$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/RestoreActivity;->requestCode(Ljava/lang/String;ZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/RestoreActivity;

.field private final synthetic val$runAfter:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/RestoreActivity;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/RestoreActivity$8;->this$0:Lcom/vkontakte/android/RestoreActivity;

    iput-object p2, p0, Lcom/vkontakte/android/RestoreActivity$8;->val$runAfter:Ljava/lang/Runnable;

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 6
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    const v5, 0x7f080281

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 170
    const/16 v0, 0xe

    if-ne p1, v0, :cond_0

    .line 196
    :goto_0
    return-void

    .line 171
    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/vkontakte/android/RestoreActivity$8;->this$0:Lcom/vkontakte/android/RestoreActivity;

    iget-object v1, p0, Lcom/vkontakte/android/RestoreActivity$8;->this$0:Lcom/vkontakte/android/RestoreActivity;

    const v2, 0x7f08006b

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/RestoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/RestoreActivity;->access$12(Lcom/vkontakte/android/RestoreActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 173
    :cond_1
    const/16 v0, 0x9

    if-eq p1, v0, :cond_2

    const/16 v0, 0x458

    if-ne p1, v0, :cond_3

    .line 174
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/RestoreActivity$8;->this$0:Lcom/vkontakte/android/RestoreActivity;

    iget-object v1, p0, Lcom/vkontakte/android/RestoreActivity$8;->this$0:Lcom/vkontakte/android/RestoreActivity;

    const v2, 0x7f080287

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/RestoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/RestoreActivity;->access$12(Lcom/vkontakte/android/RestoreActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 175
    :cond_3
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_4

    .line 176
    iget-object v0, p0, Lcom/vkontakte/android/RestoreActivity$8;->this$0:Lcom/vkontakte/android/RestoreActivity;

    iget-object v1, p0, Lcom/vkontakte/android/RestoreActivity$8;->this$0:Lcom/vkontakte/android/RestoreActivity;

    const v2, 0x7f080288

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/RestoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/RestoreActivity;->access$12(Lcom/vkontakte/android/RestoreActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 177
    :cond_4
    const/16 v0, 0x64

    if-ne p1, v0, :cond_8

    .line 178
    const-string v0, "first_name"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "last_name"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 179
    :cond_5
    iget-object v0, p0, Lcom/vkontakte/android/RestoreActivity$8;->this$0:Lcom/vkontakte/android/RestoreActivity;

    iget-object v1, p0, Lcom/vkontakte/android/RestoreActivity$8;->this$0:Lcom/vkontakte/android/RestoreActivity;

    const v2, 0x7f08028a

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/RestoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/RestoreActivity;->access$12(Lcom/vkontakte/android/RestoreActivity;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/vkontakte/android/RestoreActivity$8;->this$0:Lcom/vkontakte/android/RestoreActivity;

    invoke-static {v0, v3}, Lcom/vkontakte/android/RestoreActivity;->access$3(Lcom/vkontakte/android/RestoreActivity;I)V

    goto :goto_0

    .line 181
    :cond_6
    const-string v0, "phone"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 182
    iget-object v0, p0, Lcom/vkontakte/android/RestoreActivity$8;->this$0:Lcom/vkontakte/android/RestoreActivity;

    iget-object v1, p0, Lcom/vkontakte/android/RestoreActivity$8;->this$0:Lcom/vkontakte/android/RestoreActivity;

    const v2, 0x7f080289

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/RestoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/RestoreActivity;->access$12(Lcom/vkontakte/android/RestoreActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 184
    :cond_7
    iget-object v0, p0, Lcom/vkontakte/android/RestoreActivity$8;->this$0:Lcom/vkontakte/android/RestoreActivity;

    iget-object v1, p0, Lcom/vkontakte/android/RestoreActivity$8;->this$0:Lcom/vkontakte/android/RestoreActivity;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v5, v2}, Lcom/vkontakte/android/RestoreActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/RestoreActivity;->access$12(Lcom/vkontakte/android/RestoreActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 186
    :cond_8
    const/16 v0, 0xf

    if-ne p1, v0, :cond_b

    .line 187
    const-string v0, "user not found"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 188
    iget-object v0, p0, Lcom/vkontakte/android/RestoreActivity$8;->this$0:Lcom/vkontakte/android/RestoreActivity;

    iget-object v1, p0, Lcom/vkontakte/android/RestoreActivity$8;->this$0:Lcom/vkontakte/android/RestoreActivity;

    const v2, 0x7f0802f3

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/RestoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/RestoreActivity;->access$12(Lcom/vkontakte/android/RestoreActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 189
    :cond_9
    const-string v0, "not available"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 190
    iget-object v0, p0, Lcom/vkontakte/android/RestoreActivity$8;->this$0:Lcom/vkontakte/android/RestoreActivity;

    iget-object v1, p0, Lcom/vkontakte/android/RestoreActivity$8;->this$0:Lcom/vkontakte/android/RestoreActivity;

    const v2, 0x7f0802f4

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/RestoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/RestoreActivity;->access$12(Lcom/vkontakte/android/RestoreActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 192
    :cond_a
    iget-object v0, p0, Lcom/vkontakte/android/RestoreActivity$8;->this$0:Lcom/vkontakte/android/RestoreActivity;

    iget-object v1, p0, Lcom/vkontakte/android/RestoreActivity$8;->this$0:Lcom/vkontakte/android/RestoreActivity;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v5, v2}, Lcom/vkontakte/android/RestoreActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/RestoreActivity;->access$12(Lcom/vkontakte/android/RestoreActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 194
    :cond_b
    iget-object v0, p0, Lcom/vkontakte/android/RestoreActivity$8;->this$0:Lcom/vkontakte/android/RestoreActivity;

    iget-object v1, p0, Lcom/vkontakte/android/RestoreActivity$8;->this$0:Lcom/vkontakte/android/RestoreActivity;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v5, v2}, Lcom/vkontakte/android/RestoreActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/RestoreActivity;->access$12(Lcom/vkontakte/android/RestoreActivity;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public success(Ljava/lang/String;)V
    .locals 1
    .param p1, "sid"    # Ljava/lang/String;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/vkontakte/android/RestoreActivity$8;->this$0:Lcom/vkontakte/android/RestoreActivity;

    invoke-static {v0, p1}, Lcom/vkontakte/android/RestoreActivity;->access$14(Lcom/vkontakte/android/RestoreActivity;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/vkontakte/android/RestoreActivity$8;->val$runAfter:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/RestoreActivity$8;->val$runAfter:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 166
    :cond_0
    return-void
.end method
