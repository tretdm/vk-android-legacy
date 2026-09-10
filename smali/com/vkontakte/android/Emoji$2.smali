.class final Lcom/vkontakte/android/Emoji$2;
.super Ljava/lang/Object;
.source "Emoji.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/Emoji;->loadPageAsync(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$page:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 163
    iput p1, p0, Lcom/vkontakte/android/Emoji$2;->val$page:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 164
    iget v0, p0, Lcom/vkontakte/android/Emoji$2;->val$page:I

    invoke-static {v0}, Lcom/vkontakte/android/Emoji;->access$100(I)Landroid/graphics/Bitmap;

    .line 165
    invoke-static {}, Lcom/vkontakte/android/Emoji;->access$200()[Z

    move-result-object v0

    iget v1, p0, Lcom/vkontakte/android/Emoji$2;->val$page:I

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 166
    return-void
.end method
