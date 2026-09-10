.class Lcom/vkontakte/android/SignupActivity$9;
.super Ljava/lang/Object;
.source "SignupActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/AuthConfirm$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/SignupActivity;->verifyCode(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/SignupActivity;

.field private final synthetic val$code:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/SignupActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/SignupActivity$9;->this$0:Lcom/vkontakte/android/SignupActivity;

    iput-object p2, p0, Lcom/vkontakte/android/SignupActivity$9;->val$code:Ljava/lang/String;

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 6
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 226
    const/16 v0, 0xe

    if-ne p1, v0, :cond_0

    .line 237
    :goto_0
    return-void

    .line 227
    :cond_0
    const/16 v0, 0x456

    if-ne p1, v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/vkontakte/android/SignupActivity$9;->this$0:Lcom/vkontakte/android/SignupActivity;

    iget-object v1, p0, Lcom/vkontakte/android/SignupActivity$9;->this$0:Lcom/vkontakte/android/SignupActivity;

    const v2, 0x7f080280

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/SignupActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/SignupActivity;->access$6(Lcom/vkontakte/android/SignupActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 229
    :cond_1
    const/16 v0, 0x457

    if-ne p1, v0, :cond_2

    .line 230
    iget-object v0, p0, Lcom/vkontakte/android/SignupActivity$9;->this$0:Lcom/vkontakte/android/SignupActivity;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/vkontakte/android/SignupActivity;->access$5(Lcom/vkontakte/android/SignupActivity;I)V

    .line 231
    iget-object v0, p0, Lcom/vkontakte/android/SignupActivity$9;->this$0:Lcom/vkontakte/android/SignupActivity;

    iget-object v1, p0, Lcom/vkontakte/android/SignupActivity$9;->val$code:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/vkontakte/android/SignupActivity;->access$21(Lcom/vkontakte/android/SignupActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 232
    :cond_2
    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    .line 233
    iget-object v0, p0, Lcom/vkontakte/android/SignupActivity$9;->this$0:Lcom/vkontakte/android/SignupActivity;

    iget-object v1, p0, Lcom/vkontakte/android/SignupActivity$9;->this$0:Lcom/vkontakte/android/SignupActivity;

    const v2, 0x7f08006b

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/SignupActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/SignupActivity;->access$6(Lcom/vkontakte/android/SignupActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 235
    :cond_3
    iget-object v0, p0, Lcom/vkontakte/android/SignupActivity$9;->this$0:Lcom/vkontakte/android/SignupActivity;

    iget-object v1, p0, Lcom/vkontakte/android/SignupActivity$9;->this$0:Lcom/vkontakte/android/SignupActivity;

    const v2, 0x7f080281

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/vkontakte/android/SignupActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/SignupActivity;->access$6(Lcom/vkontakte/android/SignupActivity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public success(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 222
    return-void
.end method
