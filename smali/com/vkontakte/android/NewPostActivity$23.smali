.class Lcom/vkontakte/android/NewPostActivity$23;
.super Ljava/lang/Object;
.source "NewPostActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewPostActivity;->showMentionDialog()V
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
    iput-object p1, p0, Lcom/vkontakte/android/NewPostActivity$23;->this$0:Lcom/vkontakte/android/NewPostActivity;

    .line 624
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 627
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity$23;->this$0:Lcom/vkontakte/android/NewPostActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/vkontakte/android/NewPostActivity;->progrDlg:Landroid/app/ProgressDialog;

    .line 628
    return-void
.end method
