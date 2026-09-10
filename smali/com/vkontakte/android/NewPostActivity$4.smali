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
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NewPostActivity$4;->this$0:Lcom/vkontakte/android/NewPostActivity;

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 164
    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity$4;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/NewPostActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 166
    .local v0, "pm":Landroid/content/pm/PackageManager;
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    const-string v1, "android.hardware.camera"

    invoke-static {v0, v1}, Lcom/vkontakte/android/Global;->hasSysFeature(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 167
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity$4;->this$0:Lcom/vkontakte/android/NewPostActivity;

    iget-object v1, v1, Lcom/vkontakte/android/NewPostActivity;->photoDlg:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 174
    :goto_0
    return-void

    .line 169
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity$4;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/NewPostActivity;->startGallery()V

    goto :goto_0
.end method
