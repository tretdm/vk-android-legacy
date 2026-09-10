.class Lcom/vkontakte/android/NewPostActivity$4;
.super Ljava/lang/Object;
.source "NewPostActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewPostActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/NewPostActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewPostActivity;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/vkontakte/android/NewPostActivity$4;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 177
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity$4;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NewPostActivity;->access$400(Lcom/vkontakte/android/NewPostActivity;)Lcom/vkontakte/android/GeoAttachment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity$4;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/NewPostActivity;->startLocationChooser()V

    .line 194
    :goto_0
    return-void

    .line 180
    :cond_0
    new-instance v0, Lcom/vkontakte/android/VKAlertDialog$Builder;

    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity$4;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-direct {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d01fb

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vkontakte/android/NewPostActivity$4;->this$0:Lcom/vkontakte/android/NewPostActivity;

    const v4, 0x7f0d00b6

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/NewPostActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/vkontakte/android/NewPostActivity$4;->this$0:Lcom/vkontakte/android/NewPostActivity;

    const v4, 0x7f0d009d

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/NewPostActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    new-instance v2, Lcom/vkontakte/android/NewPostActivity$4$1;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/NewPostActivity$4$1;-><init>(Lcom/vkontakte/android/NewPostActivity$4;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method
