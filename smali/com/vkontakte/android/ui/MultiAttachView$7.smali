.class Lcom/vkontakte/android/ui/MultiAttachView$7;
.super Ljava/lang/Object;
.source "MultiAttachView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ui/MultiAttachView;->addTextThumb(Ljava/lang/String;Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/vkontakte/android/ui/MultiAttachView$7;->this$0:Lcom/vkontakte/android/ui/MultiAttachView;

    .line 424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 425
    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiAttachView$7;->this$0:Lcom/vkontakte/android/ui/MultiAttachView;

    const v1, 0xf423f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/ui/MultiAttachView;->smoothScrollTo(II)V

    .line 426
    return-void
.end method
