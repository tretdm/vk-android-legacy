.class public Lcom/vkontakte/android/ui/XEditText;
.super Landroid/widget/EditText;
.source "XEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/ui/XEditText$ZanyInputConnection;
    }
.end annotation


# instance fields
.field private keyListener:Landroid/view/View$OnKeyListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/ui/XEditText;)Landroid/view/View$OnKeyListener;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/vkontakte/android/ui/XEditText;->keyListener:Landroid/view/View$OnKeyListener;

    return-object v0
.end method


# virtual methods
.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 3
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 35
    new-instance v0, Lcom/vkontakte/android/ui/XEditText$ZanyInputConnection;

    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 36
    const/4 v2, 0x1

    .line 35
    invoke-direct {v0, p0, v1, v2}, Lcom/vkontakte/android/ui/XEditText$ZanyInputConnection;-><init>(Lcom/vkontakte/android/ui/XEditText;Landroid/view/inputmethod/InputConnection;Z)V

    return-object v0
.end method

.method public setOnKeyListener(Landroid/view/View$OnKeyListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnKeyListener;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/vkontakte/android/ui/XEditText;->keyListener:Landroid/view/View$OnKeyListener;

    .line 41
    invoke-super {p0, p1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 42
    return-void
.end method
