.class Lcom/vkontakte/android/RestoreActivity$9$1;
.super Ljava/lang/Object;
.source "RestoreActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/RestoreActivity$9;->authDone(ILjava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/RestoreActivity$9;

.field private final synthetic val$extras:Ljava/util/HashMap;

.field private final synthetic val$result:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/RestoreActivity$9;Ljava/util/HashMap;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/RestoreActivity$9$1;->this$1:Lcom/vkontakte/android/RestoreActivity$9;

    iput-object p2, p0, Lcom/vkontakte/android/RestoreActivity$9$1;->val$extras:Ljava/util/HashMap;

    iput p3, p0, Lcom/vkontakte/android/RestoreActivity$9$1;->val$result:I

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x0

    .line 212
    iget-object v0, p0, Lcom/vkontakte/android/RestoreActivity$9$1;->this$1:Lcom/vkontakte/android/RestoreActivity$9;

    invoke-static {v0}, Lcom/vkontakte/android/RestoreActivity$9;->access$0(Lcom/vkontakte/android/RestoreActivity$9;)Lcom/vkontakte/android/RestoreActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/RestoreActivity;->access$15(Lcom/vkontakte/android/RestoreActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 213
    iget-object v0, p0, Lcom/vkontakte/android/RestoreActivity$9$1;->this$1:Lcom/vkontakte/android/RestoreActivity$9;

    invoke-static {v0}, Lcom/vkontakte/android/RestoreActivity$9;->access$0(Lcom/vkontakte/android/RestoreActivity$9;)Lcom/vkontakte/android/RestoreActivity;

    move-result-object v1

    iget-object v0, p0, Lcom/vkontakte/android/RestoreActivity$9$1;->val$extras:Ljava/util/HashMap;

    const-string v2, "change_password_hash"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/vkontakte/android/RestoreActivity;->access$16(Lcom/vkontakte/android/RestoreActivity;Ljava/lang/String;)V

    .line 214
    iget v0, p0, Lcom/vkontakte/android/RestoreActivity$9$1;->val$result:I

    sget v1, Lcom/vkontakte/android/Auth;->REAUTH_SUCCESS:I

    if-ne v0, v1, :cond_0

    .line 215
    iget-object v0, p0, Lcom/vkontakte/android/RestoreActivity$9$1;->this$1:Lcom/vkontakte/android/RestoreActivity$9;

    invoke-static {v0}, Lcom/vkontakte/android/RestoreActivity$9;->access$0(Lcom/vkontakte/android/RestoreActivity$9;)Lcom/vkontakte/android/RestoreActivity;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/vkontakte/android/RestoreActivity;->access$3(Lcom/vkontakte/android/RestoreActivity;I)V

    .line 223
    :goto_0
    return-void

    .line 217
    :cond_0
    sget-object v0, Lcom/vkontakte/android/Auth;->lastError:Ljava/lang/String;

    const-string v1, "code"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/vkontakte/android/RestoreActivity$9$1;->this$1:Lcom/vkontakte/android/RestoreActivity$9;

    invoke-static {v0}, Lcom/vkontakte/android/RestoreActivity$9;->access$0(Lcom/vkontakte/android/RestoreActivity$9;)Lcom/vkontakte/android/RestoreActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/RestoreActivity$9$1;->this$1:Lcom/vkontakte/android/RestoreActivity$9;

    invoke-static {v1}, Lcom/vkontakte/android/RestoreActivity$9;->access$0(Lcom/vkontakte/android/RestoreActivity$9;)Lcom/vkontakte/android/RestoreActivity;

    move-result-object v1

    const v2, 0x7f080280

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/RestoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/RestoreActivity;->access$12(Lcom/vkontakte/android/RestoreActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/RestoreActivity$9$1;->this$1:Lcom/vkontakte/android/RestoreActivity$9;

    invoke-static {v0}, Lcom/vkontakte/android/RestoreActivity$9;->access$0(Lcom/vkontakte/android/RestoreActivity$9;)Lcom/vkontakte/android/RestoreActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/RestoreActivity$9$1;->this$1:Lcom/vkontakte/android/RestoreActivity$9;

    invoke-static {v1}, Lcom/vkontakte/android/RestoreActivity$9;->access$0(Lcom/vkontakte/android/RestoreActivity$9;)Lcom/vkontakte/android/RestoreActivity;

    move-result-object v1

    const v2, 0x7f080281

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Lcom/vkontakte/android/Auth;->lastError:Ljava/lang/String;

    aput-object v4, v3, v5

    const/4 v4, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/vkontakte/android/RestoreActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/RestoreActivity;->access$12(Lcom/vkontakte/android/RestoreActivity;Ljava/lang/String;)V

    goto :goto_0
.end method
