.class Lcom/vkontakte/android/NewsfeedActivity$4;
.super Ljava/lang/Object;
.source "NewsfeedActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewsfeedActivity;->showPhotoDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/NewsfeedActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewsfeedActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NewsfeedActivity$4;->this$0:Lcom/vkontakte/android/NewsfeedActivity;

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 182
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vkontakte/android/NewsfeedActivity$4;->this$0:Lcom/vkontakte/android/NewsfeedActivity;

    const-class v2, Lcom/vkontakte/android/NewPostActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 183
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "qp"

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 184
    iget-object v1, p0, Lcom/vkontakte/android/NewsfeedActivity$4;->this$0:Lcom/vkontakte/android/NewsfeedActivity;

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/NewsfeedActivity;->startActivity(Landroid/content/Intent;)V

    .line 185
    return-void
.end method
