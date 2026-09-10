.class Lcom/vkontakte/android/MessageViewActivity$2;
.super Ljava/lang/Object;
.source "MessageViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/MessageViewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/MessageViewActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/MessageViewActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/MessageViewActivity$2;->this$0:Lcom/vkontakte/android/MessageViewActivity;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/vkontakte/android/MessageViewActivity$2;->this$0:Lcom/vkontakte/android/MessageViewActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/MessageViewActivity;->resend()V

    .line 131
    return-void
.end method
