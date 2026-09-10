.class Lcom/vkontakte/android/CallActivity$4;
.super Ljava/lang/Object;
.source "CallActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/CallActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/CallActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/CallActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/CallActivity$4;->this$0:Lcom/vkontakte/android/CallActivity;

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 281
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity$4;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/CallActivity;->finish()V

    .line 282
    return-void
.end method
