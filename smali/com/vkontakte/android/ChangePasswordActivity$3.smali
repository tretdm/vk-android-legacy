.class Lcom/vkontakte/android/ChangePasswordActivity$3;
.super Ljava/lang/Object;
.source "ChangePasswordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ChangePasswordActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ChangePasswordActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ChangePasswordActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ChangePasswordActivity$3;->this$0:Lcom/vkontakte/android/ChangePasswordActivity;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 78
    iget-object v3, p0, Lcom/vkontakte/android/ChangePasswordActivity$3;->this$0:Lcom/vkontakte/android/ChangePasswordActivity;

    invoke-static {v3}, Lcom/vkontakte/android/ChangePasswordActivity;->access$0(Lcom/vkontakte/android/ChangePasswordActivity;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f09009d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, "old":Ljava/lang/String;
    iget-object v3, p0, Lcom/vkontakte/android/ChangePasswordActivity$3;->this$0:Lcom/vkontakte/android/ChangePasswordActivity;

    invoke-static {v3}, Lcom/vkontakte/android/ChangePasswordActivity;->access$0(Lcom/vkontakte/android/ChangePasswordActivity;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f09009e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "new1":Ljava/lang/String;
    iget-object v3, p0, Lcom/vkontakte/android/ChangePasswordActivity$3;->this$0:Lcom/vkontakte/android/ChangePasswordActivity;

    invoke-static {v3}, Lcom/vkontakte/android/ChangePasswordActivity;->access$0(Lcom/vkontakte/android/ChangePasswordActivity;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f09009f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "new2":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-ge v3, v4, :cond_0

    .line 91
    :goto_0
    return-void

    .line 82
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 83
    iget-object v3, p0, Lcom/vkontakte/android/ChangePasswordActivity$3;->this$0:Lcom/vkontakte/android/ChangePasswordActivity;

    const v4, 0x7f080327

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 86
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x6

    if-ge v3, v4, :cond_2

    .line 87
    iget-object v3, p0, Lcom/vkontakte/android/ChangePasswordActivity$3;->this$0:Lcom/vkontakte/android/ChangePasswordActivity;

    const v4, 0x7f08027f

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 90
    :cond_2
    iget-object v3, p0, Lcom/vkontakte/android/ChangePasswordActivity$3;->this$0:Lcom/vkontakte/android/ChangePasswordActivity;

    invoke-static {v3, v2, v0}, Lcom/vkontakte/android/ChangePasswordActivity;->access$2(Lcom/vkontakte/android/ChangePasswordActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
