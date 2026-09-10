.class public Lcom/vkontakte/android/ui/SuggestingAutocompleteTextView;
.super Landroid/widget/AutoCompleteTextView;
.source "SuggestingAutocompleteTextView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;)V

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/ui/SuggestingAutocompleteTextView;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    return-void
.end method


# virtual methods
.method public enoughToFilter()Z
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x1

    return v0
.end method

.method public showDropDown()V
    .locals 3

    .prologue
    .line 31
    new-instance v0, Lcom/vkontakte/android/ui/SuggestingAutocompleteTextView$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ui/SuggestingAutocompleteTextView$1;-><init>(Lcom/vkontakte/android/ui/SuggestingAutocompleteTextView;)V

    .line 35
    const-wide/16 v1, 0xc8

    .line 31
    invoke-virtual {p0, v0, v1, v2}, Lcom/vkontakte/android/ui/SuggestingAutocompleteTextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 36
    return-void
.end method
