.class Lcom/vkontakte/android/NewPostActivity$2;
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
    iput-object p1, p0, Lcom/vkontakte/android/NewPostActivity$2;->this$0:Lcom/vkontakte/android/NewPostActivity;

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity$2;->this$0:Lcom/vkontakte/android/NewPostActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/vkontakte/android/NewPostActivity;->publishing:Z

    .line 151
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity$2;->this$0:Lcom/vkontakte/android/NewPostActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->access$0(Lcom/vkontakte/android/NewPostActivity;Z)V

    .line 152
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity$2;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/NewPostActivity;->post()V

    .line 153
    return-void
.end method
