.class Lcom/vkontakte/android/NewPostActivity$31;
.super Ljava/lang/Object;
.source "NewPostActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewPostActivity;->friendListLoaded()V
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
    iput-object p1, p0, Lcom/vkontakte/android/NewPostActivity$31;->this$0:Lcom/vkontakte/android/NewPostActivity;

    .line 854
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 855
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity$31;->this$0:Lcom/vkontakte/android/NewPostActivity;

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->progrDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 856
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity$31;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/NewPostActivity;->setupMentionDlg()V

    .line 857
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity$31;->this$0:Lcom/vkontakte/android/NewPostActivity;

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->mentionDlg:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 858
    return-void
.end method
