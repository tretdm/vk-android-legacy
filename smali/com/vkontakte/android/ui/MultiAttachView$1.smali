.class Lcom/vkontakte/android/ui/MultiAttachView$1;
.super Ljava/lang/Object;
.source "MultiAttachView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ui/MultiAttachView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ui/MultiAttachView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/MultiAttachView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ui/MultiAttachView$1;->this$0:Lcom/vkontakte/android/ui/MultiAttachView;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiAttachView$1;->this$0:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-static {v0}, Lcom/vkontakte/android/ui/MultiAttachView;->access$0(Lcom/vkontakte/android/ui/MultiAttachView;)Lcom/vkontakte/android/ui/MultiAttachView$AttachActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiAttachView$1;->this$0:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-static {v0}, Lcom/vkontakte/android/ui/MultiAttachView;->access$0(Lcom/vkontakte/android/ui/MultiAttachView;)Lcom/vkontakte/android/ui/MultiAttachView$AttachActionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/vkontakte/android/ui/MultiAttachView$AttachActionListener;->onShowAddAttach()V

    .line 100
    :cond_0
    return-void
.end method
