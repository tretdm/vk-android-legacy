.class Lcom/vkontakte/android/StatusActivity$1;
.super Ljava/lang/Object;
.source "StatusActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/StatusActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/StatusActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/StatusActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/StatusActivity$1;->this$0:Lcom/vkontakte/android/StatusActivity;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/vkontakte/android/StatusActivity$1;->this$0:Lcom/vkontakte/android/StatusActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/StatusActivity;->finish()V

    .line 57
    return-void
.end method
