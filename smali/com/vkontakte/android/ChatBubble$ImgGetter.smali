.class public Lcom/vkontakte/android/ChatBubble$ImgGetter;
.super Ljava/lang/Object;
.source "ChatBubble.java"

# interfaces
.implements Landroid/text/Html$ImageGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/ChatBubble;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImgGetter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 160
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 161
    .local v1, "src":I
    const/4 v0, 0x0

    .line 162
    .local v0, "bmp":Landroid/graphics/drawable/Drawable;
    packed-switch v1, :pswitch_data_0

    .line 168
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 169
    return-object v0

    .line 163
    :pswitch_0
    sget-object v2, Lcom/vkontakte/android/Global;->res:Landroid/content/res/Resources;

    const v3, 0x7f020111

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 164
    :pswitch_1
    sget-object v2, Lcom/vkontakte/android/Global;->res:Landroid/content/res/Resources;

    const v3, 0x7f020121

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 165
    :pswitch_2
    sget-object v2, Lcom/vkontakte/android/Global;->res:Landroid/content/res/Resources;

    const v3, 0x7f02011d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 166
    :pswitch_3
    sget-object v2, Lcom/vkontakte/android/Global;->res:Landroid/content/res/Resources;

    const v3, 0x7f020114

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 162
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
