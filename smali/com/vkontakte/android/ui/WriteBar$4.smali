.class Lcom/vkontakte/android/ui/WriteBar$4;
.super Ljava/lang/Object;
.source "WriteBar.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ui/WriteBar;->openAttachMenu(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ui/WriteBar;

.field private final synthetic val$dlg:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/WriteBar;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ui/WriteBar$4;->this$0:Lcom/vkontakte/android/ui/WriteBar;

    iput-object p2, p0, Lcom/vkontakte/android/ui/WriteBar$4;->val$dlg:Landroid/app/Dialog;

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/vkontakte/android/ui/WriteBar$4;->val$dlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 210
    const/4 v0, 0x0

    return v0
.end method
