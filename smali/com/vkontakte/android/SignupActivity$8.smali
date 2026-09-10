.class Lcom/vkontakte/android/SignupActivity$8;
.super Ljava/lang/Object;
.source "SignupActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/AuthSignup$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/SignupActivity;->requestCode(Ljava/lang/String;ZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/SignupActivity;

.field private final synthetic val$runAfter:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/SignupActivity;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/SignupActivity$8;->this$0:Lcom/vkontakte/android/SignupActivity;

    iput-object p2, p0, Lcom/vkontakte/android/SignupActivity$8;->val$runAfter:Ljava/lang/Runnable;

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/SignupActivity$8;)Lcom/vkontakte/android/SignupActivity;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/vkontakte/android/SignupActivity$8;->this$0:Lcom/vkontakte/android/SignupActivity;

    return-object v0
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

    .line 176
    const/16 v0, 0xe

    if-ne p1, v0, :cond_0

    .line 209
    :goto_0
    return-void

    .line 177
    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/vkontakte/android/SignupActivity$8;->this$0:Lcom/vkontakte/android/SignupActivity;

    iget-object v1, p0, Lcom/vkontakte/android/SignupActivity$8;->this$0:Lcom/vkontakte/android/SignupActivity;

    const v2, 0x7f08006b

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/SignupActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/SignupActivity;->access$6(Lcom/vkontakte/android/SignupActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 179
    :cond_1
    const/16 v0, 0x3ec

    if-ne p1, v0, :cond_2

    .line 180
    new-instance v0, Lcom/vkontakte/android/VKAlertDialog$Builder;

    iget-object v1, p0, Lcom/vkontakte/android/SignupActivity$8;->this$0:Lcom/vkontakte/android/SignupActivity;

    invoke-direct {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 181
    const v1, 0x7f080068

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 182
    const v1, 0x7f080285

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 183
    const v1, 0x7f080286

    new-instance v2, Lcom/vkontakte/android/SignupActivity$8$1;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/SignupActivity$8$1;-><init>(Lcom/vkontakte/android/SignupActivity$8;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 191
    const v1, 0x7f080042

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 192
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 193
    :cond_2
    const/16 v0, 0x9

    if-eq p1, v0, :cond_3

    const/16 v0, 0x458

    if-ne p1, v0, :cond_4

    .line 194
    :cond_3
    iget-object v0, p0, Lcom/vkontakte/android/SignupActivity$8;->this$0:Lcom/vkontakte/android/SignupActivity;

    iget-object v1, p0, Lcom/vkontakte/android/SignupActivity$8;->this$0:Lcom/vkontakte/android/SignupActivity;

    const v2, 0x7f080287

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/SignupActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/SignupActivity;->access$6(Lcom/vkontakte/android/SignupActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 195
    :cond_4
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_5

    .line 196
    iget-object v0, p0, Lcom/vkontakte/android/SignupActivity$8;->this$0:Lcom/vkontakte/android/SignupActivity;

    iget-object v1, p0, Lcom/vkontakte/android/SignupActivity$8;->this$0:Lcom/vkontakte/android/SignupActivity;

    const v2, 0x7f080288

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/SignupActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/SignupActivity;->access$6(Lcom/vkontakte/android/SignupActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 197
    :cond_5
    const/16 v0, 0x64

    if-ne p1, v0, :cond_9

    .line 198
    const-string v0, "first_name"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "last_name"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 199
    :cond_6
    iget-object v0, p0, Lcom/vkontakte/android/SignupActivity$8;->this$0:Lcom/vkontakte/android/SignupActivity;

    iget-object v1, p0, Lcom/vkontakte/android/SignupActivity$8;->this$0:Lcom/vkontakte/android/SignupActivity;

    const v2, 0x7f08028a

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/SignupActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/SignupActivity;->access$6(Lcom/vkontakte/android/SignupActivity;Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/vkontakte/android/SignupActivity$8;->this$0:Lcom/vkontakte/android/SignupActivity;

    invoke-static {v0, v3}, Lcom/vkontakte/android/SignupActivity;->access$5(Lcom/vkontakte/android/SignupActivity;I)V

    goto/16 :goto_0

    .line 201
    :cond_7
    const-string v0, "phone"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 202
    iget-object v0, p0, Lcom/vkontakte/android/SignupActivity$8;->this$0:Lcom/vkontakte/android/SignupActivity;

    iget-object v1, p0, Lcom/vkontakte/android/SignupActivity$8;->this$0:Lcom/vkontakte/android/SignupActivity;

    const v2, 0x7f080289

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/SignupActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/SignupActivity;->access$6(Lcom/vkontakte/android/SignupActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 204
    :cond_8
    iget-object v0, p0, Lcom/vkontakte/android/SignupActivity$8;->this$0:Lcom/vkontakte/android/SignupActivity;

    iget-object v1, p0, Lcom/vkontakte/android/SignupActivity$8;->this$0:Lcom/vkontakte/android/SignupActivity;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v5, v2}, Lcom/vkontakte/android/SignupActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/SignupActivity;->access$6(Lcom/vkontakte/android/SignupActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 207
    :cond_9
    iget-object v0, p0, Lcom/vkontakte/android/SignupActivity$8;->this$0:Lcom/vkontakte/android/SignupActivity;

    iget-object v1, p0, Lcom/vkontakte/android/SignupActivity$8;->this$0:Lcom/vkontakte/android/SignupActivity;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v5, v2}, Lcom/vkontakte/android/SignupActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/SignupActivity;->access$6(Lcom/vkontakte/android/SignupActivity;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public success(Ljava/lang/String;)V
    .locals 1
    .param p1, "sid"    # Ljava/lang/String;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/vkontakte/android/SignupActivity$8;->this$0:Lcom/vkontakte/android/SignupActivity;

    invoke-static {v0, p1}, Lcom/vkontakte/android/SignupActivity;->access$19(Lcom/vkontakte/android/SignupActivity;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/vkontakte/android/SignupActivity$8;->val$runAfter:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/SignupActivity$8;->val$runAfter:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 172
    :cond_0
    return-void
.end method
