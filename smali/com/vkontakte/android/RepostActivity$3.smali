.class Lcom/vkontakte/android/RepostActivity$3;
.super Ljava/lang/Object;
.source "RepostActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/RepostActivity;->repostWithComment(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/RepostActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/RepostActivity;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/vkontakte/android/RepostActivity$3;->this$0:Lcom/vkontakte/android/RepostActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/vkontakte/android/RepostActivity$3;->this$0:Lcom/vkontakte/android/RepostActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/RepostActivity;->finish()V

    .line 145
    return-void
.end method
